cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.5-1"
  sha256 arm:   "9f344eb606df2c3c2c6b93ab8c191b20e9b5ae6b754a380dd30bae7d4611e1d9",
         intel: "78ce0343faefd15f20e1f3a5958bf40431c2c6fda201ca0f8f6401ce36634d80"

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
