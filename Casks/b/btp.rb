cask "btp" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.116.3"
  sha256 arm:          "312964f52700273fdcd75f3d9f90828cebb0933a10115c21d0a9c4df24dc2258",
         intel:        "2342c39c49e6722c2924d06a57944a2d2a1e57c533b81de6b02ee2ef8faf3030",
         arm64_linux:  "e90908f87aac1cb0b0cf584aec149d4e3a2c4a5227fbec161b36b79ac21b5137",
         x86_64_linux: "f7003924f914181d434bb6705b4a5bbff7c88f01f2e3c442cda76bb9b2a16ec6"

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
