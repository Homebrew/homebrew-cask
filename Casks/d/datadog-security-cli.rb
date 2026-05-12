cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.4-1"
  sha256 arm:   "d794b9798e62bd1811dd50b406d5ed53a9d81fc310c17598a2cd55de302284dc",
         intel: "cbafd180158586f814341cb439dedd35ed82a9cee37f55694a296696d1f50dea"

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
