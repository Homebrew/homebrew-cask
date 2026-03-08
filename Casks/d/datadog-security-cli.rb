cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.2-1"
  sha256 arm:   "bcd11c2936d62afe2f001c34f828fbfdae944891c892ebf304ad3370d81cf1db",
         intel: "38de48aed896739a80033636606b93cd6097e286d867203b353898e41c62b808"

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
