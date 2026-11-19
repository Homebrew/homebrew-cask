cask "octuo" do
  version :latest
  sha256 :no_check

  url "https://downloads.tutuo.ai/macos/Octuo-latest.dmg"
  name "Octuo"
  desc "Assistant that coordinates the AI agents you already use"
  homepage "https://www.tutuo.ai/en/octuo/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :sequoia"

  app "Octuo.app"
end
