cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.46"
  sha256 arm:   "591ac87be6121130b1b404945240c0e0a26ec0e7eb30efd36cda950a414ac70f",
         intel: "f8e9f4766fd192fc58c533f546c00a4c0a846cc983906be640207fa2c0d58d8e"

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
