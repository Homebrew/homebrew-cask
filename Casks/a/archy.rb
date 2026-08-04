cask "archy" do
  version "2.42.1"
  sha256 "02b163b17387b1cca0740cf498eab7ce55ec5c09f099bef79be2edc180392fbe"

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
