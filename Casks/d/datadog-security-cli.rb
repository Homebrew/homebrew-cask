cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.15-1"
  sha256 arm:   "99aeaa41769041aea7cf3526f6fe5be283dad5f1b6b2a01b61bd16a139375434",
         intel: "7b3181956a3d1a5b3ff430fb594b85fb0c17a3f2957a24a0ab3ac759bee39d3f"

  url "https://dd-agent.s3.amazonaws.com/datadog-security-cli-#{version}.#{arch}.dmg",
      verified: "dd-agent.s3.amazonaws.com/"
  name "Datadog Security CLI"
  desc "Datadog Security Product CLI"
  homepage "https://www.datadoghq.com/"

  livecheck do
    url "https://dd-agent.s3.amazonaws.com/?prefix=datadog-security-cli"
    regex(/datadog-security-cli[._-]v?(\d+(?:[.-]\d+)+)\.#{arch}\.dmg/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//Contents/Key").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :big_sur

  binary "datadog-security-cli"

  # No zap stanza required
end
