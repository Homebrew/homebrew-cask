cask :v1 => 'barmaid' do
  version 'v0.1-beta'
  sha256 'c0dc73a2ce71a5e6266c792c03aa496ed3b345471e48fd52218db7415394ba27'

  url "https://github.com/zenonas/barmaid/releases/download/#{version}/Barmaid-#{version.gsub('-', '')}.dmg"
  name 'Barmaid'
  homepage 'https://github.com/zenonas/barmaid'
  license :mit    # todo: improve this machine-generated value

  app 'Barmaid.app'

  depends_on :macos => '>= 10.9'
end
