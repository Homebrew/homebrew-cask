cask "skint" do
  version "1.09,2025.09"
  sha256 "5e626d28b51882330e793679c3e442654f99616e26ecfa5b9dfa21d8ed6bd48a"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/skint#{version.csv.first.no_dots}.zip"
  name "Skint"
  desc "Check status of key security settings and features"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/skint1.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      version = xml.elements["//dict/key[text()='skint']"]&.next_element&.text
      url = xml.elements["//dict/key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :monterey"

  app "skint#{version.csv.first.no_dots}/Skint.app"
  app "skint#{version.csv.first.no_dots}/SkintM.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.skint.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.skintm.sfl*",
    "~/Library/Caches/co.eclecticlight.Skint",
    "~/Library/Caches/co.eclecticlight.SkintM",
    "~/Library/HTTPStorages/co.eclecticlight.Skint",
    "~/Library/HTTPStorages/co.eclecticlight.SkintM",
    "~/Library/Preferences/co.eclecticlight.Skint.plist",
    "~/Library/Preferences/co.eclecticlight.SkintM.plist",
  ]
end
