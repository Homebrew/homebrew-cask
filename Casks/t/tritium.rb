cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.47"
  sha256 arm:   "fee2227de9eb30642b87126e6d1e9124cd44a480df3351eff19534c38aa9e14e",
         intel: "525a789c065e10661b7f0fdc69604b2f17ebae86dca1cf50bdcf5a5d1bca6ab4"

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
