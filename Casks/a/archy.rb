cask "archy" do
  version "2.35.5"
  sha256 "b809b928c18bd7e846398a7cbeced523c9c937fadf39389545ba8dd71caecf34"

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
