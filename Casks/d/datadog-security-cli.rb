cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.1-1"
  sha256 arm:   "21c27d70c9b8d0dd492ecd93c2ae6dbce85213ca42018971ae2f25b18d8bc4c5",
         intel: "3edc7d0de212c830d6a3e263964bbb99b7f78e8f581e4e960cc516c3cf3da888"

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

  depends_on macos: ">= :big_sur"

  binary "datadog-security-cli"

  # No zap stanza required
end
