cask "soundtoys" do
  version "5.3.6.16152"
  sha256 "859676347419937c6d77c2eb47dca2b262574db056138b7028e2e3792080bb27"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/Soundtoys#{version.major}_#{version}.dmg",
      verified: "https://storage.googleapis.com/soundtoys-download/"
  name "Soundtoys"
  desc "Audio Effects Plugins"
  homepage "https://www.soundtoys.com/product/soundtoys/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :page_match do |page|
      JSON.parse(page)["Soundtoys5_Mac"]["fullversion"]
    end
  end

  pkg "Install Soundtoys #{version.major}.pkg"

  uninstall pkgutil:   ["com.soundtoys.*", "com.paceap.pkg.eden.*"],
            launchctl: ["com.paceap.eden.licensed", "com.paceap.eden.licensed.agent"]
end
