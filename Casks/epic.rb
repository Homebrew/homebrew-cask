cask "epic" do
  version "88.0.4324.96"

  if Hardware::CPU.intel?
    url "https://cdn.epicbrowser.com/MacIntel/#{version.major}/epic_#{version}.dmg"
    sha256 "1aad6e4d478e9eea2bced95c8b6b8217008a5004b6be887b54e9111bbbbacaf3"
  else
    url "https://cdn.epicbrowser.com/MacArm/#{version.major}/epic_#{version}.dmg"
    sha256 "60cd26a790c06a5563d159be0b4a5b286959feecd855ac318d53840cb6022628"
  end

  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://www.epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank_you.php"
    strategy :page_match
    regex(%r{href=.*?/epic_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Epic.app"
end
