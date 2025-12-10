cask "cilicon" do
  version "2.4.1,24"
  sha256 "bcc175eb4e41c960e77d22a3bf356d7a3565b46a1872f1e626ceafd104334769"

  url "https://github.com/traderepublic/Cilicon/releases/download/v#{version.csv.first}/Cilicon_#{version.csv.first}_#{version.csv.second}_adhoc.zip"
  name "Cilicon"
  desc "Self-Hosted ephemeral CI on Apple Silicon"
  homepage "https://github.com/traderepublic/Cilicon"

  livecheck do
    url :url
    regex(/Cilicon[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-].*\.zip/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Cilicon.app"

  zap trash: [
    "~/.cilicon.yml",
    "~/cilicon.yml",
  ]
end
