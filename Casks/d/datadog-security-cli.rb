cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.9-1"
  sha256 arm:   "3a34b313534c5ec0033ef2b3f745735914a7250b8230e47b5ef020de264509ef",
         intel: "1ae82211117289fb9aece896eeda76d0a2b0aadca0a0fa7d319b9eaf22f77c9c"

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
