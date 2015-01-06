cask :v1 => 'sublercli' do
  version :latest
  sha256 :no_check

  url "https://bitbucket.org/galad87/sublercli/downloads/SublerCLI-Test.zip"
  homepage 'https://bitbucket.org/galad87/sublercli/'
  license :oss

  binary 'SublerCLI'
end
