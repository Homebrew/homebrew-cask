cask "equilotl" do
  arch arm: "arm64", intel: "x64"

  version "2.1.9"
  sha256 arm:   "a4b682c5bb8cb89d0f8e305a9a9abacd552379e164f77fdb19748016f823a60e",
         intel: "6fe3c0d01d22354da7245e00944f005652e348f6722a8aef63b3f84f027c4431"

  url "https://github.com/Equicord/Equilotl/releases/download/v#{version}/Equilotl-darwin-#{arch}.zip"
  name "Equilotl"
  desc "Cross platform gui app for installing Equicord"
  homepage "https://github.com/Equicord/Equilotl"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Equilotl.app"

  zap trash: "~/Library/Application Support/Equicord"
end
