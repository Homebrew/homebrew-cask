cask :v1 => 'rapidweaver' do
  version '6.0.3'
  sha256 'e30a85f337d846a44feb902f0214b6cd49c2ff375db81a7197704fd57aae0442'

  url "http://realmacsoftware.com/redirects/rapidweaver#{version.to_i}/direct"
  appcast "http://www.realmacsoftware.com/stats/rapidweaver#{version.to_i}.php"
  homepage 'http://realmacsoftware.com/rapidweaver'
  license :unknown    # todo: improve this machine-generated value

  app 'RapidWeaver.app'
end
