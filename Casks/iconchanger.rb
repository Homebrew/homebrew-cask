cask "iconchanger" do
  version "1.2.7,2022-12-22,11-45-17"
  sha256 "65952531d571375a60b8b1082f2d655040bf566d4e8692449476a8e2582e8b46"

  url "https://github.com/underthestars-zhy/IconChanger/releases/download/v#{version.csv.first}/IconChanger.#{version.csv.second}.#{version.csv.third}.zip"
  name "IconChanger"
  desc "Change your app's icon"
  homepage "https://github.com/underthestars-zhy/IconChanger"

  livecheck do
    url "https://github.com/underthestars-zhy/IconChanger/releases/latest"
    regex(%r{href=.*?download/v?(\d+(?:\.\d+)*)/IconChanger[._-](\d+(?:-\d+)*)[._-](\d+(?:-\d+)*).zip}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  app "IconChanger #{version.csv.second} #{version.csv.third}/IconChanger.app"

  zap trash: [
    "~/.iconchanger",
    "~/Library/Caches/com.zhuhaoyu.IconChanger",
    "~/Library/HTTPStorages/com.zhuhaoyu.IconChanger",
    "~/Library/Preferences/com.zhuhaoyu.IconChanger.plist",
    "~/Library/Saved Application State/com.zhuhaoyu.IconChanger.savedState",
  ]
end
