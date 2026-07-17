cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.11-1"
  sha256 arm:   "0c80f82f82ba84a3386fc1eaf547c66f0c101ff74667895e5ecb744db9b9fa13",
         intel: "4b463d08aefaddf58005d4de1ef91fa0b90a1d0d33f289e7b775941b1e111f85"

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
