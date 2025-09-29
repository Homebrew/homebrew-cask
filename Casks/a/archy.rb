cask "archy" do
  version "2.35.7"
  sha256 "ac3989d6b022b8a0cee328954c7ee1f3e51a5ede3191669c8f17730aacb23cfc"

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

  binary "archyBin/archy-macos-#{version}", target: "archy"

  zap trash: "~/.archy_config"

  caveats do
    requires_rosetta
  end
end
