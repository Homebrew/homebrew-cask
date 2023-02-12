cask "kekaexternalhelper" do
  version "1.1.3,1.2.59"
  sha256 "a330bc6fcd00a93dfd95c52cdbdbbec5af0a0f091be0fc0efea58931906f43b6"

  url "https://github.com/aonez/Keka/releases/download/v#{version.csv.second}/KekaExternalHelper-v#{version.csv.first}.zip"
  name "Keka External Helper"
  name "KekaDefaultApp"
  desc "Helper application for the Keka file archiver"
  homepage "https://github.com/aonez/Keka/wiki/Default-application"

  # We can identify the version from the `location` header of the first
  # response from https://d.keka.io/helper/ but we need to be able to either not
  # follow redirections (i.e., omit `--location` from curl args) or iterate
  # through the headers for all responses (not the hash of merged headers,
  # where only the last `location` header is available).
  livecheck do
    skip "Cannot identify version without access to all headers"
  end

  app "KekaExternalHelper.app"
end
