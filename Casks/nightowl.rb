cask "nightowl" do
  version "0.3.0,13"
  sha256 :no_check

  url "https://nightowl.kramser.xyz/files/NightOwl.dmg"
  name "NightOwl"
  desc "Utility to toggle dark mode"
  homepage "https://nightowl.kramser.xyz/"

  livecheck do
    url "https://nightowl.kramser.xyz/api/public_update"
    regex(/"version": *"(.*)",\n *"build": *"(.*)"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0] + "," + match[1] }
    end
  end

  depends_on macos: ">= :mojave"

  app "NightOwl.app"
end
