cask 'docker-machine-driver-hyperkit' do
  version '0.24.1'
  sha256 '2c355e637c7acfd1b87bf575833902cf124332b0637d640abf474f93423c9c3f'

  url "https://storage.googleapis.com/minikube/releases/v#{version}/docker-machine-driver-hyperkit"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '955ebaedbcc424fd4d8089f875c39184a3a2caf56a25d7ecf3baa3eedf29689e'
  name 'Docker Machine driver for HyperKit'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on cask: 'minikube'
  container type: :naked

  binary 'docker-machine-driver-hyperkit'

  postflight do
    set_ownership "#{staged_path}/docker-machine-driver-hyperkit", user: 'root', group: 'wheel'
    set_permissions "#{staged_path}/docker-machine-driver-hyperkit", '0755'
  end

  zap trash: '~./docker-machine-driver-hyperkit'

  caveats <<~EOS
    The hyperkit driver must be installed with setuid permission to work.
    
    To set the right permissions, execute:
      sudo chmod 4755 #{staged_path}/docker-machine-driver-hyperkit

    For more information, see:
      https://github.com/kubernetes/minikube/blob/master/docs/drivers.md#hyperkit-driver
  EOS
end
