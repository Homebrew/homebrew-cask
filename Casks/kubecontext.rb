cask 'kubecontext' do
  version '1.22'
  sha256 '63396f87f4fda10cd357c76d49cde1001e0644ad91f93ad3fdec1899b519990c'

  url "https://github.com/turkenh/KubeContext/releases/download/v#{version}/KubeContext.zip"
  appcast 'https://github.com/turkenh/KubeContext/releases.atom'
  name 'KubeContext'
  homepage 'https://github.com/turkenh/KubeContext'

  app 'KubeContext.app'
end
