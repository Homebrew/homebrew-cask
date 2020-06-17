cask 'okta' do
  version '0.3.1'
  sha256 'f063964e4017c98e193f235453575cd14e9ee42a68482c02923e777bd4b7bfdc'

  url "https://github.com/oktadeveloper/okta-cli/releases/download/okta-cli-tools-#{version}/okta-cli-macos-#{version}-x86_64.zip"
  appcast 'https://github.com/oktadeveloper/okta-cli/releases.atom'
  name 'okta'
  homepage 'https://github.com/oktadeveloper/okta-cli'

  binary 'okta'
end
