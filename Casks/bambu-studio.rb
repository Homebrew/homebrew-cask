cask "bambu-studio" do
  version "01.03.01.01,20221126112354"
  sha256 "5b7f92514f3b7b3770edd2491fd2106edaf9659c0319fd5017e02314aafa9f62"

  url "https://github.com/bambulab/BambuStudio/releases/download/v#{version.csv.first.gsub!(/^0/, "").gsub!(/(\.0)/, ".")}/Bambu_Studio_mac-v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/bambulab/BambuStudio/"
  name "Bambu Studio"
  desc "3D model slicing software for 3D printers, maintained by Bambu Lab"
  homepage "https://bambulab.com/en/download/studio"

  livecheck do
    url "https://github.com/bambulab/BambuStudio/releases/latest"
    regex(%r{href=.*?/Bambu_Studio_mac-v(\d+\.\d+\.\d+\.\d+)-(\d+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "BambuStudio.app"

  zap trash: [
    "/Library/Logs/DiagnosticsReports/BambuStudio*",
    "~/Library/Application Support/BambuStudio",
    "~/Library/Caches/com.bambulab.bambu-studio",
    "~/Library/HTTPStorages/com.bambulab.bambu-studio.binarycookies",
    "~/Library/Preferences/com.bambulab.bambu-studio.plist",
    "~/Library/Saved Application State/com.bambulab.bambu-studio.savedState",
    "~/Library/WebKit/com.bambulab.bambu-studio",
  ]
end
