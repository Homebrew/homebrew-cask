cask "rustcast" do
  version "0.7.6"
  sha256 "f02b117bf7c2f2c7709c13963c768896684fe7e4fbfd44892ad5c730ac522b78"

  url "https://github.com/RustCastLabs/rustcast/releases/download/v#{version}/Rustcast-universal-macos.app.zip"
  name "Rustcast"
  desc "Utility tooling popup window for your system"
  homepage "https://github.com/unsecretised/rustcast"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "target/release/macos/Rustcast.app"
end
