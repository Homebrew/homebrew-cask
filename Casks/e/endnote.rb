cask "endnote" do
  # The second part of the `version` is the product version (e.g. X9, 2025).
  # Until we can identify this using livecheck, we will need to manually find
  # the new product version on each major version update. See:
  # https://support.clarivate.com/Endnote/s/article/Download-EndNote
  version "22.2.0.22114,2025"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.endnote.com/downloads/#{version.csv.second}/EndNote#{version.csv.second}Installer.dmg"
  name "EndNote"
  desc "Reference manager"
  homepage "https://endnote.com/"

  # The XML file doesn't provide any update information for new major versions
  # (e.g. 22.0.0.0) until a subsequent version is released. The check will fail
  # when the cask is updated to a new major version but it should automatically
  # work again when the next version is released (i.e. livecheck will need to
  # be skipped on CI for major version updates).
  livecheck do
    url "https://download.endnote.com/updates/#{version.csv.first.major}.0/EN#{version.csv.first.major}MacUpdates.xml"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :xml do |xml, regex|
      current_major = version.csv.first.major
      current_product_version = version.csv.second

      xml.get_elements("//updates/build").map do |item|
        update_to = item.elements["updateTo"]&.text&.strip
        match = update_to.match(regex) if update_to
        next if match.blank?

        major = match[1][/^(\d+)/, 1]
        if major == current_major && current_product_version
          "#{match[1]},#{current_product_version}"
        else
          # This does not add the current product version to any versions in
          # the upstream XML file that don't use the current major. This is
          # intended to ensure that a major version update won't work until
          # someone manually identifies the new product version (e.g. X9, 2025)
          # and adds it as the second part of the cask `version` (e.g.
          # `22.0.0.0,2025`). This `strategy` block setup can be reworked
          # if/when upstream provides a way of identifying product versions
          # that can be reliably checked by livecheck.
          match[1]
        end
      end
    end
  end

  container nested: "Install EndNote #{version.csv.second}.app/Contents/Resources/EndNote.zip"

  suite "EndNote"

  zap trash: [
    "/Library/Application Support/ResearchSoft/EndNote",
    "~/Library/Application Support/EndNote",
    "~/Library/Caches/com.ThomsonResearchSoft.EndNote",
    "~/Library/Cookies/com.ThomsonResearchSoft.EndNote.binarycookies",
    "~/Library/HTTPStorages/com.ThomsonResearchSoft.EndNote",
    "~/Library/HTTPStorages/com.ThomsonResearchSoft.EndNote.binarycookies",
    "~/Library/Preferences/com.ThomsonResearchSoft.EndNote.plist",
    "~/Library/Preferences/com.ThomsonReuters.EndNoteCustomizer.plist",
    "~/Library/Services/ENService.app",
    "~/Library/Spotlight/EndNote.mdimporter",
    "~/Library/WebKit/com.ThomsonResearchSoft.EndNote",
  ]
end
