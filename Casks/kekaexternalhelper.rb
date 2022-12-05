cask "kekaexternalhelper" do
  version "1.1.2,1.2.50"
  sha256 "4fb629045b9d887a6adb3280e791ff8ac7843b40b475bb88ece5c25c6cd5d70f"

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
