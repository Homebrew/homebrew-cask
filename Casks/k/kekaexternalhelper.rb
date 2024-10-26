cask "kekaexternalhelper" do
  version "1.2.0,1.4.4"
  sha256 "6857bb22694b6f6c01a13c40953b0a04b1704acf90da414a7476be63961d9827"

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
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/KekaExternalHelper[._-]v?(\d+(?:\.\d+)+)\.zip$}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          "#{match[2]},#{match[1]}"
        end
      end.flatten
    end
  end

  app "KekaExternalHelper.app"

  zap trash: [
    "~/Library/Containers/com.aone.keka",
    "~/Library/Saved Application State/com.aone.KekaExternalHelper.savedState",
  ]
end
