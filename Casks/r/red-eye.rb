cask "red-eye" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.hexedbits.com/downloads/redeye.zip"
  name "Red Eye"
  desc "Tool to prevent the system from going into sleep mode"
  homepage "https://www.hexedbits.com/redeye/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Red Eye.app"
end
