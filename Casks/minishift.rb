cask 'minishift' do
  version '0.9.0'
  sha256 '885251315ba9e3e7e3cb2687c8cbf534d8cfffd6c860140c739bbc37a6f78621'

  url "https://github.com/jimmidyson/minishift/releases/download/v#{version}/minishift-darwin-amd64"
  appcast 'https://github.com/jimmidyson/minishift/releases.atom',
          checkpoint: 'b6e67eb191a8d05cf419858ce1f51b4840aae11ca8fd877113e6e44da760868d'
  name 'Minishift'
  homepage 'https://github.com/jimmidyson/minishift'

  depends_on arch: :x86_64
  container type: :naked

  binary 'minishift-darwin-amd64', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift-darwin-amd64", '0755'
  end
end
