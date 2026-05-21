cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.41"
  sha256 arm:   "30e06c1030f6a239586dab5f18c06328a1e5f81a93b2c937e90618b877bb31ed",
         intel: "447122fc9cb1b1d20834d7b1843949d5ae01bcc7dbdaeaf23184593441b04aec"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: :big_sur

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
