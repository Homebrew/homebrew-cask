cask "texifier" do
  version "1.9.29,817,053c1c6"
  sha256 "9bedfa620868bb6245e48d058041076c0df7b9287f0f7a48124adf8a40defb5d"

  url "https://download.texifier.com/apps/osx/updates/Texifier_#{version.csv.first.dots_to_underscores}__#{version.csv.second}__#{version.csv.third}.dmg"
  name "Texifier"
  desc "LaTeX editor"
  homepage "https://www.texifier.com/mac"

  livecheck do
    url :homepage
    regex(/href=["'].*?download\.texifier\.com.*?osx.*?Texifier_(\d+(?:_\d+)+)__(\d+)__([^_]+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]},#{match[2]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Texifier.app"

  zap trash: [
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.vallettaventures.texpadm",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.vallettaventures.texpadm.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vallettaventures.texpad.sfl*",
    "~/Library/Application Support/Texpad",
    "~/Library/Caches/com.vallettaventures.Texpad",
    "~/Library/Cookies/com.vallettaventures.Texpad.binarycookies",
    "~/Library/HTTPStorages/com.vallettaventures.Texpad",
    "~/Library/HTTPStorages/com.vallettaventures.Texpad.binarycookies",
    "~/Library/Preferences/com.vallettaventures.Texpad.plist",
    "~/Library/Saved Application State/com.vallettaventures.Texpad.savedState",
    "~/Library/WebKit/com.vallettaventures.Texpad",
  ]
end
