cask 'manager' do
  version '18.5.4'
  sha256 '2f60e160d9bd78a83081e1ce0926c2ac7f45b92f26b72e0855bdba5feb5a677f'

  # d2ap5zrlkavzl7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ap5zrlkavzl7.cloudfront.net/#{version}/Manager.dmg"
  name 'Manager'
  homepage 'https://www.manager.io/'

  app 'Manager.app'
end
