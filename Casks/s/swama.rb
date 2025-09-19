cask "swama" do
  version "1.5.0"
  sha256 "f9bd5f1be27091c69be5eb05f7b57c9de45fcd110300b1ba43010eb0c27e3220"

  url "https://github.com/Trans-N-ai/swama/releases/download/v#{version}/Swama.dmg"
  name "Swama"
  desc "Machine-learning runtime"
  homepage "https://github.com/Trans-N-ai/swama"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Swama.app"

  zap trash: "~/Library/Preferences/trans-n.ai.Swama.plist"
end
