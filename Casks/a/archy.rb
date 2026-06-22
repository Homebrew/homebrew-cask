cask "archy" do
  version "2.39.5"
  sha256 "76df6ca4b50dc060f50d0b5558a3deb6d0bc3e0d67a10ddea70be00069228b3e"

  url "https://sdk-cdn.mypurecloud.com/archy/#{version}/archy-macos.zip",
      verified: "sdk-cdn.mypurecloud.com/archy/"
  name "Archy"
  desc "YAML processor"
  homepage "https://developer.genesys.cloud/devapps/archy/"

  livecheck do
    url "https://sdk-cdn.mypurecloud.com/archy/versions.json"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "archyBin/archy-macos-#{version}", target: "archy"

  zap trash: "~/.archy_config"

  caveats do
    requires_rosetta
  end
end
