cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.31"
  sha256 arm:   "1eea2a845331d59601b3dbcf4702d53eb96a808c3ab41d9a97b0796d0c9e7956",
         intel: "84436a46e42c1662a81ac1cda2b895cd1b87d97a0b08cfad7e016e397a045731"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
