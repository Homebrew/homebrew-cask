cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.3-1"
  sha256 arm:   "19aea1837c884cecec8971328c68329bad94384ba2206baac29cf72b45748a75",
         intel: "49e6f469ce47fc9bcd53c3c93dbb8774320dbaf4e733be0dfa7cab1c38fa2b2e"

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
