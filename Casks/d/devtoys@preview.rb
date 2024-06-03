cask "devtoys@preview" do
  version "v2.0.0.3"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://github.com/DevToys-app/DevToys/releases/download/#{version}/devtoys_osx_x64.zip"
  else
    url "https://github.com/DevToys-app/DevToys/releases/download/#{version}/devtoys_osx_arm64.zip"
  end

  name "DevToys"
  desc "A Swiss Army Knife for developers"
  homepage "https://github.com/DevToys-app/DevToys"

  depends_on macos: ">= :catalina"

  app "DevToys.app"

  zap trash: [
    "~/Library/com.devtoys.preview",
    "~/Library/Preferences/com.devtoys.plist",
    "~/Library/Caches/com.devtoys.preview",
    "~/Library/WebKit/come.devtoys.app",
  ]
end
