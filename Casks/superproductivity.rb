cask "superproductivity" do
  version "6.5.2"
  sha256 "f913d96ea98450eadbadf295803ec938bc3e6b600df5e8c36e5360b32551bb89"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
