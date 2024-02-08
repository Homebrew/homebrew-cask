cask "chai" do
  version "3.3.0"
  sha256 "f8b32b671363634fdb9227c40d4d69c90bb3779b73ea28b6831ea7d4d0c5908f"

  url "https://github.com/lvillani/chai/releases/download/v#{version}/Chai-v#{version}.zip"
  name "Chai"
  desc "Utility to prevent the system from going to sleep"
  homepage "https://github.com/lvillani/chai"

  depends_on macos: ">= :sierra"

  app "Chai.app"

  zap trash: [
    "~/Library/Application Scripts/me.villani.lorenzo.Chai",
    "~/Library/Containers/me.villani.lorenzo.Chai",
  ]
end
