cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.13-1"
  sha256 arm:   "9b9449fb5945a93ff8a65aaaae74656f6069a59fed0dd9e3a3242af7e17a1166",
         intel: "7a19119308b5305f69e565c6b2fe906ba68952e58bfbd8798218345a5ff27a02"

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
