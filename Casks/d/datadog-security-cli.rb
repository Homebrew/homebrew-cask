cask "datadog-security-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.8-1"
  sha256 arm:   "fc7bed716210429adbd9c8c891fd948b5a067a493f9f52fd5dc5ef8407d140d4",
         intel: "7bf7ccfc17009e9de6a1ea3c916af2ac7d61b167345fd5b2233d31cc9955888d"

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
