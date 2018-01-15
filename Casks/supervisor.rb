cask 'supervisor' do
  version '0.1.0-alpha'
  sha256 '673d405d52ebe5274a4e4d9b11f772a3b816af2025fb2dc70f67b92724126ecf'

  url "https://github.com/RyanBalfanz/SupervisorApp/releases/download/v#{version}/Supervisor-darwin-x64.zip"
  name 'Supervisor'
  homepage 'https://github.com/RyanBalfanz/SupervisorApp'

  app 'Supervisor-darwin-x64/Supervisor.app'
end
