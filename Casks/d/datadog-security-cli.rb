cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.6-1"
  sha256 arm:   "264ea3d6203d9ab3bdb5df6ad4329b86a664172647d26b70de778ab14ad058b5",
         intel: "f5e4ecb6bbd9c28c2931a5547e45e0ad78d5e275e348b2cbed2e2069e8ba70ea"

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
