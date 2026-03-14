cask "nucleo" do
  arch arm: "-silicon"

  version "4.2.0"
  sha256 arm:   "47bb642f3d0491326ae71096be3a5f97f5c3c997bdd2017669a1109bd90c10fd",
         intel: "d0cc44fc77642cd37fa0236b30a5d5f9404259db76ef2aa48ab916f80dc41a2f"

  url "https://downloads.nucleoapp.com/mac#{arch}/Nucleo_#{version}.zip"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    regex(/href=.*?Nucleo[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Nucleo.app"

  zap trash: [
    "~/Library/Application Support/Nucleo",
    "~/Library/Logs/Nucleo",
    "~/Library/Preferences/co.ambercreative.nucleo.plist",
    "~/Library/Saved Application State/co.ambercreative.nucleo.savedState",
  ]
end
