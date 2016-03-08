cask 'power-manager-pro' do
  version '4.5.1'
  sha256 'a2973067224fb1889529bf82266c3ccc739d9ac1b45b8c177b943eb21d54ac85'

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanagerpro.dmg'
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: 'd9ea7fe35d83c67e6eb0e390b8cbca7400cd9396b4eaf6418130e541a4464b7c'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  app 'Power Manager Pro.app'
end
