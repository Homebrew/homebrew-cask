cask "cilicon" do
  version "2.4.2,25"
  sha256 "b4886bc74d6c4a802b24ef3bc40afa894d8cc13e9c25a912fdc6940a1a79a17c"

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
