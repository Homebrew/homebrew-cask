cask "epic" do
  arch = Hardware::CPU.intel? ? "mac" : "macarm"

  version "91.0.4472.114"

  if Hardware::CPU.intel?
    sha256 "52f388b4da04a26a7c5c732eaf8688e0f2bd0a6c34cd10dffe781d38ae974053"
  else
    sha256 "79951fee34ba9b9bffea5e03b8217776467e65a737d2054ae38b4f76114acb71"
  end

  url "https://cdn.epicbrowser.com/v#{version.major}/#{arch}/epic_#{version}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://www.epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank_you.php"
    regex(%r{href=.*?/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Epic.app"
end
