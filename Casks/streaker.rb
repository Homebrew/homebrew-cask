cask 'streaker' do
  version '1.0.6'
  sha256 'ac9f9538b5f08c575600899704ff4d8333c44785076a348f51873554d458bcc3'

  url "https://github.com/jamieweavis/streaker/releases/download/v#{version}/Streaker-#{version}-mac.zip"
  name 'Streaker'
  homepage 'https://github.com/jamieweavis/streaker'

  app 'Streaker.app'
end
