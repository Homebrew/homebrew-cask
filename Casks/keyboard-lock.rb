cask "keyboard-lock" do
  version "1.0"
  sha256 "5b665927b9cf3ef01ef8324977837d4f6fb7359cf249af284971ee5a24ee2f19"

  url "http://keylock.io/public/app/Keyboard-Lock-#{version}.zip"
  name "Keyboard Lock"
  desc "Simple keyboard locker"
  homepage "http://keylock.io/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Keyboard-Lock-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Keyboard Lock.app"

  uninstall delete: "~/Library/Containers/com.virae.Keyboard-Lock"
end
