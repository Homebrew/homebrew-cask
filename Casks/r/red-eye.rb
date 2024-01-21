cask "red-eye" do
  version "1.2.0"
  sha256 :no_check

  url "https://web.archive.org/web/20200814031954/https://www.hexedbits.com/downloads/redeye.zip"
  name "Red Eye"
  desc "Tool to prevent the system from going into sleep mode"
  homepage "https://www.hexedbits.com/redeye/"

  deprecate! date: "2024-01-21", because: "download artifact not available"

  depends_on macos: ">= :mojave"

  app "Red Eye.app"
end
