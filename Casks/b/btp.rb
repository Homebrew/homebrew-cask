cask "btp" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.116.2"
  sha256 arm:          "2a76cc51f6e7e7f9f80e50fd9c914ee46e1475426eae678d93449f50accf11ce",
         intel:        "51fb4de1dc639064c399db0bb8911dd73f075fdc8b66e4fcdace0d8694056f0c",
         arm64_linux:  "43c9b76badc13b4a01dc01a91f96d5858b31cc356477970d847f22940ffd58f9",
         x86_64_linux: "9cd22d6241636d3a57174980e8ccb06c84a320a0bd36d4007f4e68e5203a59fb"

  url "https://tools.hana.ondemand.com/additional/btp-cli-#{os}-#{arch}-#{version}.tar.gz",
      cookies: {
        "eula_3_2_agreed" => "tools.hana.ondemand.com/developer-license-3_2.txt",
      }
  name "SAP Business Technology Platform Command Line Interface"
  desc "CLI for the SAP Business Technology Platform"
  homepage "https://tools.hana.ondemand.com/#cloud-cpcli"

  livecheck do
    url :homepage
    regex(/btp[._-]cli[._-]#{os}[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  binary "#{os}-#{arch}/btp"
  generate_completions_from_executable "#{os}-#{arch}/btp",
                                       shell_parameter_format: "--autocomplete=init:",
                                       shells:                 [:bash, :zsh, :pwsh]

  # No zap stanza required

  caveats do
    license "https://tools.hana.ondemand.com/developer-license-3_2.txt"
  end
end
