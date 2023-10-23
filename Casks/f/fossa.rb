cask "fossa" do
  version "3.8.18"
  sha256 "8fba90188752cea2c35a764f3b2308adc71058d7984cd761dd447a1c8359444f"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_amd64.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "fossa"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  # Uses github api to retrieve latest release.
  # > brew livecheck --debug fossa
  # Ref: https://docs.brew.sh/Brew-Livecheck#githublatest-strategy-block
  livecheck do
    url :stable
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates false

  binary "fossa"

  # Verify that binary can be execuated!
  postflight do
    # If the cmd does not return exit 0, it will
    # not perform installation.
    cmd = "#{staged_path}/fossa --version"
    raise "Could run command: `#{cmd}`." unless system cmd
  end

  caveats do
    # fossa-cli requires Rosetta 2 for it to run on Apple Silicon.
    requires_rosetta

    <<~EOS
      **********************************************************************

        You can find more information about fossa-cli at:
          https://github.com/fossas/fossa-cli/tree/master/docs#user-manual

        To use fossa-cli you will FOSSA API KEY:
          >> export FOSSA_API_KEY=<FOSSA-API-KEY>

        Learn more on how to generate api key:
          https://docs.fossa.com/docs/api-reference

        After which, you can use fossa-cli:
          >> cd $MY_PROJECT_DIR # Use your actual project location here.
          >> fossa analyze
          >> fossa test

        To run fossa analysis without without API key in output only mode:
          >> fossa analyze --output

        If you are running into issues, contact support at:
          https://support.fossa.com/

      **********************************************************************
    EOS
  end
end
