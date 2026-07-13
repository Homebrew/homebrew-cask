cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.10-1"
  sha256 arm:   "452c8c3dc513eac16365ed338f3c286bf2db6ef6cd61f0cc948a01fe697d50ac",
         intel: "b4fe6e16d4550eb7fffb942c9b7ab9abd28157837e50bb883d14826e8fedbf12"

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
