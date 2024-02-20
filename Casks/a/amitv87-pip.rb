cask "amitv87-pip" do
  version "2.60"
  sha256 "3c7c368f0a1f75e09eb96e043b42af7ce56408df414bfb7f08c48987a4b394b5"

  url "https://github.com/amitv87/PiP/releases/download/v#{version}/PiP-#{version}.dmg"
  name "PiP"
  desc "Always on top window preview"
  homepage "https://github.com/amitv87/PiP"

  depends_on macos: ">= :sierra"

  app "PiP.app"

  zap trash: "~/Library/Saved Application State/com.boggyb.PiP.savedState"
end
