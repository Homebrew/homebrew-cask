cask "githubpulse" do
  version "0.3.10"
  sha256 :no_check

  url "https://github.com/tadeuzagallo/GithubPulse/raw/master/dist/GithubPulse.zip"
  name "GithubPulse"
  homepage "https://github.com/tadeuzagallo/GithubPulse"

  livecheck do
    url "https://github.com/tadeuzagallo/GithubPulse"
    strategy :github
  end

  app "GithubPulse.app"
end
