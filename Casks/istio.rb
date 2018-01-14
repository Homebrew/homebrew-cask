cask 'istio' do
  version '0.4.0'
  sha256 '01dd1d17f34f85cf7fa46d7c0a1fbffd793d9f5fedbd48a0580fe95d553f1b12'

  url 'https://github.com/istio/istio/releases/download/0.4.0/istio-0.4.0-osx.tar.gz'
  appcast 'https://github.com/istio/istio/releases.atom',
          checkpoint: 'e11bad3722b5ac9360010f5b2e3621f7986631ed0c2deb5bba8a9129fce7be3a'
  name 'Istio'
  homepage 'https://github.com/istio/istio'

  binary 'istio-0.4.0/bin/istioctl', target: 'istioctl'
end
