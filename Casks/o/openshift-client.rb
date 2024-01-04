cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.8"
  sha256 arm:   "1e218ccc2cd096a3afeb257cc8cf80f400bf35df0d321d5cd1ca27327eb98139",
         intel: "08abff8a88f5823d4853b0619fd061d7adbfad2c56b8c0a397e7596663b5133d"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
