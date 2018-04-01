cask 'githubpulse' do
  version :latest
  sha256 :no_check

  url 'https://github.com/tadeuzagallo/GithubPulse/raw/master/dist/GithubPulse.zip'
  name 'GithubPulse'
  homepage 'https://github.com/tadeuzagallo/GithubPulse'

  app 'GithubPulse.app'
end
